@AbapCatalog.sqlViewName: 'ZRAP_CONNECTION'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Read only E2E: Data model connection'
@UI.headerInfo.typeName: 'Connection'
@UI.headerInfo.typeNamePlural: 'Connections'

define view ZI_RAP_CONNECTION_R
  as select from /dmo/connection as connection
{
      @UI.facet: [{ purpose: #STANDARD,
                    type: #IDENTIFICATION_REFERENCE,
                    label: 'Connection',
                    position: 10 }]

      @UI.lineItem: [{ position: 10, label: 'Airline' }]
      @UI: { identification: [ { position: 10, label: 'Airline' }] }
  key carrier_id      as CarrierId,
      @UI.lineItem: [{ position: 20, label: 'Connection Number' }]
      @UI: { identification: [ { position: 20, label: 'Connection Number' }] }
  key connection_id   as ConnectionId,
      @UI.lineItem: [{ position: 30, label: 'Departure Airport Code' }]
      @UI: { identification: [ { position: 30, label: 'Departure Airport Code' }] }
      @UI.selectionField: [{ position: 10 }]
      airport_from_id as AirportFromId,
      @UI.lineItem: [{ position: 40, label: 'Destination Airport Code' }]
      @UI: { identification: [ { position: 40, label: 'Destination Airport Code' }] }
      @UI.selectionField: [{ position: 20 }]
      airport_to_id   as AirportToId,
      @UI.lineItem: [{ position: 50, label: 'Departure Time' }]
      @UI: { identification: [ { position: 50, label: 'Departure Time' }] }
      departure_time  as DepartureTime,
      @UI.lineItem: [{ position: 60, label: 'Arrival Time' }]
      @UI: { identification: [ { position: 60, label: 'Arrival Time' }] }
      arrival_time    as ArrivalTime,
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      @UI: { identification: [ { position: 70, label: 'Distance' }] }
      distance        as Distance, // secondary info, not displayed on report
      distance_unit   as DistanceUnit //secondary info, not displayed on report

}
