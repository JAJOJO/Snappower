# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

  complaints = Complaint.create([{ name: 'Broken Prongs' }, { name: 'Wrong Type' }, { name: 'Wrong Style' }, { name: 'Other'}])
  actions = Action.create([{ name: 'Return' }, { name: 'Refund' }, { name: 'Exchange' }, { name: 'Other'}])
  styles = Style.create([{ name: 'Wh Du' }, { name: 'Wh De' }, { name: 'Iv Du' },{ name: 'Iv De' },{ name: 'Al Du' },{ name: 'Al De' }])
  products = Product.create([{ name: 'guidelight' }, { name: 'USB' }])


  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes1', complaint:'Broken Prongs', action:'Return', style:'Wh Du', product:'USB'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes1', complaint:'Broken Prongs', action:'Return', style:'Wh Du', product:'USB'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes1', complaint:'Broken Prongs', action:'Return', style:'Wh Du', product:'USB'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes1', complaint:'Broken Prongs', action:'Return', style:'Wh Du', product:'USB'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes1', complaint:'Broken Prongs', action:'Return', style:'Wh Du', product:'USB'}])


  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes2', complaint:'Wrong Type', action:'Refund', style:'Iv De', product:'guidelight'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes2', complaint:'Wrong Type', action:'Refund', style:'Iv De', product:'guidelight'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes2', complaint:'Wrong Type', action:'Refund', style:'Iv De', product:'guidelight'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes2', complaint:'Wrong Type', action:'Refund', style:'Iv De', product:'guidelight'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes2', complaint:'Wrong Type', action:'Refund', style:'Iv De', product:'guidelight'}])

  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes3', complaint:'Wrong Style ', action:'Exchange', style:'Al Du', product:'guidelight'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes3', complaint:'Wrong Style ', action:'Exchange', style:'Al Du', product:'guidelight'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes3', complaint:'Wrong Style ', action:'Exchange', style:'Al Du', product:'guidelight'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes3', complaint:'Wrong Style ', action:'Exchange', style:'Al Du', product:'guidelight'}])
  tickets = Ticket.create([{ quantity: '1',price:'5.99', notes:'notes3', complaint:'Wrong Style ', action:'Exchange', style:'Al Du', product:'guidelight'}])
