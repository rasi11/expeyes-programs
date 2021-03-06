'''
expEYES program
Author  : Ajith Kumar B.P, bpajith@gmail.com
License : GNU GPL version 3
'''
import gettext
gettext.bindtextdomain("expeyes")
gettext.textdomain('expeyes')
_ = gettext.gettext

from Tkinter import *
import expeyes.eyes17 as eyes, expeyes.eyeplot17 as eyeplot, expeyes.eyemath17 as eyemath, time, sys, math

WIDTH  = 600   # width of drawing canvas
HEIGHT = 400   # height    

class SR04:
	tv = [ [], [] ]			# Lists for Readings
	TIMER = 5			# Time interval between reads
	MINY = 0			# Voltage range
	MAXY = 150
	running = False
	MAXTIME = 10

	def fit_curve(self):
		fa = eyemath.fit_dsine(self.tv[0], self.tv[1])
		if fa != None:
			pa = fa[1]
			g.line(self.tv[0], fa[0],1)
			self.msg(_('Angular velocity = %5.2f rad/sec. Damping Factor = %5.3f')%(pa[1], pa[4]))
		else:
			self.msg(_('Failed to fit data'))

	def xmgrace(self):
		if self.running == True:
			return
		eyeplot.grace([self.tv])

	def start(self):
		self.running = True
		self.index = 0
		self.tv = [ [], [] ]
		try:
			self.MAXTIME = int(DURATION.get())
			g.setWorld(0, self.MINY, self.MAXTIME, self.MAXY,_('Time'),_('Distance'))
			Dur.config(state=DISABLED)
			self.msg(_('Starting the Measurements'))
			root.after(self.TIMER, self.update)
		except:
			self.msg(_('Failed to Start'))

	def stop(self):
		self.running = False
		Dur.config(state=NORMAL)
		self.msg(_('User Stopped the measurements'))

	def update(self):
		if self.running == False:
			return
		t,v = p.sr04_distance_time()  # SR04 measurement
		if len(self.tv[0]) == 0:
			self.start_time = t
			elapsed = 0
		else:
			elapsed = t - self.start_time
		self.tv[0].append(elapsed)
		self.tv[1].append(v)
		if len(self.tv[0]) >= 2:
			g.delete_lines()
			g.line(self.tv[0], self.tv[1])
		if elapsed > self.MAXTIME:
			self.running = False
			Dur.config(state=NORMAL)
			self.msg(_('Completed the Measurements'))
			return 
		root.after(self.TIMER, self.update)

	def save(self):
		try:
			fn = filename.get()
		except:
			fn = 'sr04-dist.dat'
		p.save([self.tv],fn)
		self.msg(_('Data saved to %s')%fn)

	def clear(self):
		if self.running == True:
			return
		self.tv = [ [], [] ]
		g.delete_lines()
		self.msg(_('Cleared Data and Trace'))

	def msg(self,s, col = 'blue'):
		msgwin.config(text=s, fg=col)

p = eyes.open()
root = Tk()
Canvas(root, width = WIDTH, height = 5).pack(side=TOP)  # Some space at the top
g = eyeplot.graph(root, width=WIDTH, height=HEIGHT, bip=False)	# make plot objects using draw.disp
sr = SR04()

cf = Frame(root, width = WIDTH, height = 10)
cf.pack(side=TOP,  fill = BOTH, expand = 1)


b3 = Label(cf, text = _('Digitize for'))
b3.pack(side = LEFT, anchor = SW)
DURATION = StringVar()
Dur =Entry(cf, width=5, bg = 'white', textvariable = DURATION)
DURATION.set('10')
Dur.pack(side = LEFT, anchor = SW)
b3 = Label(cf, text = _('Seconds.'))
b3.pack(side = LEFT, anchor = SW)

cf = Frame(root, width = WIDTH, height = 10)
cf.pack(side=TOP,  fill = BOTH, expand = 1)
b1 = Button(cf, text = _('START'), command = sr.start)
b1.pack(side = LEFT, anchor = N)
b1 = Button(cf, text = _('STOP'), command = sr.stop)
b1.pack(side = LEFT, anchor = N)
b1 = Button(cf, text = _('FIT'), command = sr.fit_curve)
b1.pack(side = LEFT, anchor = N)
b4 = Button(cf, text = _('CLEAR'), command = sr.clear)
b4.pack(side = LEFT, anchor = N)
b1 = Button(cf, text = _('Xmgrace'), command = sr.xmgrace)
b1.pack(side = LEFT, anchor = N)
b3 = Button(cf, text = _('SAVE to'), command = sr.save)
b3.pack(side = LEFT, anchor = N)
filename = StringVar()
e1 =Entry(cf, width=15, bg = 'white', textvariable = filename)
filename.set('sr04-dist.dat')
e1.pack(side = LEFT)
b5 = Button(cf, text = _('QUIT'), command = sys.exit)
b5.pack(side = RIGHT, anchor = N)

mf = Frame(root, width = WIDTH, height = 10)
mf.pack(side=TOP)
msgwin = Label(mf,text=_('Message'), fg = 'blue')
msgwin.pack(side=LEFT, anchor = S, fill=BOTH, expand=1)


eyeplot.pop_image('pics/sr04-dist.png', _('Distance by SR04 Echo module'))
root.title(_('Distance by Ultrasound Echo, SR04'))
root.mainloop()

