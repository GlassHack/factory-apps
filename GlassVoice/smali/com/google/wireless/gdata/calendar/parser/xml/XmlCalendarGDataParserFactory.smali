.class public Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;
.super Ljava/lang/Object;
.source "XmlCalendarGDataParserFactory.java"

# interfaces
.implements Lcom/google/wireless/gdata/client/GDataParserFactory;


# instance fields
.field private final xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V
    .locals 0
    .param p1, "xmlFactory"    # Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    .line 30
    return-void
.end method


# virtual methods
.method public createCalendarsFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    .local v0, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;

    invoke-direct {v2, p1, v0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v2

    .line 43
    .end local v0    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v3, "Could not create XmlPullParser"

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    .local v0, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;

    invoke-direct {v2, p1, v0}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlEventsGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v2

    .line 58
    .end local v0    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v3, "Could not create XmlPullParser"

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    .locals 3
    .param p1, "entryClass"    # Ljava/lang/Class;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    const-class v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    if-ne p1, v0, :cond_0

    .line 73
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;->createCalendarsFeedParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-class v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    if-ne p1, v0, :cond_1

    .line 75
    invoke-virtual {p0, p2}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;->createParser(Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown entry class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;
    .locals 3
    .param p1, "entry"    # Lcom/google/wireless/gdata/data/Entry;

    .prologue
    .line 92
    instance-of v1, p1, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected EventEntry!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    .line 96
    .local v0, "eventEntry":Lcom/google/wireless/gdata/calendar/data/EventEntry;
    new-instance v1, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;

    iget-object v2, p0, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;->xmlFactory:Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;

    invoke-direct {v1, v2, v0}, Lcom/google/wireless/gdata/calendar/serializer/xml/XmlEventEntryGDataSerializer;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    return-object v1
.end method
