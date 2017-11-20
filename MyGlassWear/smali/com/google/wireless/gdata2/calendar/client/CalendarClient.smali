.class public Lcom/google/wireless/gdata2/calendar/client/CalendarClient;
.super Lcom/google/wireless/gdata2/client/GDataServiceClient;
.source "CalendarClient.java"


# static fields
.field private static final ALLCALENDARS_BASE_FEED_URL:Ljava/lang/String; = "https://www.google.com/calendar/feeds/default/allcalendars/full/"

.field private static final CALENDAR_BASE_FEED_URL:Ljava/lang/String; = "https://www.google.com/calendar/feeds/"

.field public static final PROJECTION_PRIVATE_FULL:Ljava/lang/String; = "/private/full"

.field public static final SERVICE:Ljava/lang/String; = "cl"


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V
    .locals 0
    .param p1, "client"    # Lcom/google/wireless/gdata2/client/GDataClient;
    .param p2, "factory"    # Lcom/google/wireless/gdata2/client/GDataParserFactory;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/client/GDataServiceClient;-><init>(Lcom/google/wireless/gdata2/client/GDataClient;Lcom/google/wireless/gdata2/client/GDataParserFactory;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getDefaultCalendarUrl(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/client/QueryParams;)Ljava/lang/String;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "projection"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/wireless/gdata2/client/QueryParams;

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.google.com/calendar/feeds/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getGDataClient()Lcom/google/wireless/gdata2/client/GDataClient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/wireless/gdata2/client/GDataClient;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "feedUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    if-nez p3, :cond_0

    .line 80
    .end local v0    # "feedUrl":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "feedUrl":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParserForUserCalendars(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    .locals 4
    .param p1, "feedUrl"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/HttpException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getGDataClient()Lcom/google/wireless/gdata2/client/GDataClient;

    move-result-object v0

    .line 106
    .local v0, "gDataClient":Lcom/google/wireless/gdata2/client/GDataClient;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getProtocolVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/google/wireless/gdata2/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 110
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->getGDataParserFactory()Lcom/google/wireless/gdata2/client/GDataParserFactory;

    move-result-object v2

    const-class v3, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    invoke-interface {v2, v3, v1}, Lcom/google/wireless/gdata2/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata2/parser/GDataParser;

    move-result-object v2

    return-object v2
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/wireless/gdata2/calendar/client/CalendarClient;->DEFAULT_GDATA_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "cl"

    return-object v0
.end method

.method public getUserCalendarsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "https://www.google.com/calendar/feeds/default/allcalendars/full/"

    return-object v0
.end method
