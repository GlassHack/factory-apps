.class public final Lcom/adobe/xmp/XMPDateTimeFactory;
.super Ljava/lang/Object;
.source "XMPDateTimeFactory.java"


# static fields
.field private static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/adobe/xmp/XMPDateTimeFactory;->UTC:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static convertToLocalTime(Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;
    .locals 4
    .param p0, "dateTime"    # Lcom/adobe/xmp/XMPDateTime;

    .prologue
    .line 147
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 149
    .local v1, "timeInMillis":J
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 150
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 151
    new-instance v3, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v3, v0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    return-object v3
.end method

.method public static convertToUTCTime(Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;
    .locals 6
    .param p0, "dateTime"    # Lcom/adobe/xmp/XMPDateTime;

    .prologue
    .line 130
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 131
    .local v1, "timeInMillis":J
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v3, Lcom/adobe/xmp/XMPDateTimeFactory;->UTC:Ljava/util/TimeZone;

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 132
    .local v0, "cal":Ljava/util/GregorianCalendar;
    new-instance v3, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 134
    new-instance v3, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v3, v0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    return-object v3
.end method

.method public static create(IIIIIII)Lcom/adobe/xmp/XMPDateTime;
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "nanoSecond"    # I

    .prologue
    .line 67
    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>()V

    .line 68
    .local v0, "dt":Lcom/adobe/xmp/XMPDateTime;
    invoke-interface {v0, p0}, Lcom/adobe/xmp/XMPDateTime;->setYear(I)V

    .line 69
    invoke-interface {v0, p1}, Lcom/adobe/xmp/XMPDateTime;->setMonth(I)V

    .line 70
    invoke-interface {v0, p2}, Lcom/adobe/xmp/XMPDateTime;->setDay(I)V

    .line 71
    invoke-interface {v0, p3}, Lcom/adobe/xmp/XMPDateTime;->setHour(I)V

    .line 72
    invoke-interface {v0, p4}, Lcom/adobe/xmp/XMPDateTime;->setMinute(I)V

    .line 73
    invoke-interface {v0, p5}, Lcom/adobe/xmp/XMPDateTime;->setSecond(I)V

    .line 74
    invoke-interface {v0, p6}, Lcom/adobe/xmp/XMPDateTime;->setNanoSecond(I)V

    .line 75
    return-object v0
.end method

.method public static createFromCalendar(Ljava/util/Calendar;)Lcom/adobe/xmp/XMPDateTime;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 48
    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static createFromISO8601(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
    .locals 1
    .param p0, "strValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentDateTime()Lcom/adobe/xmp/XMPDateTime;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static setLocalTimeZone(Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;
    .locals 2
    .param p0, "dateTime"    # Lcom/adobe/xmp/XMPDateTime;

    .prologue
    .line 113
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 115
    new-instance v1, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v1, v0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    return-object v1
.end method
