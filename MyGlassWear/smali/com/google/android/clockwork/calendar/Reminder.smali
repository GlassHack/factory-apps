.class public Lcom/google/android/clockwork/calendar/Reminder;
.super Ljava/lang/Object;
.source "Reminder.java"


# static fields
.field private static final EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final METHOD:Ljava/lang/String; = "method"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field public eventId:J

.field public method:I

.field public minute:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/clockwork/calendar/Reminder;
    .locals 2
    .param p1, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 22
    const-string v0, "event_id"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/clockwork/calendar/Reminder;->eventId:J

    .line 23
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/clockwork/calendar/Reminder;->minute:I

    .line 24
    const-string v0, "method"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/clockwork/calendar/Reminder;->method:I

    .line 25
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 30
    const-string v0, "Reminder(eventId=%s;minute=%s;method=%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/google/android/clockwork/calendar/Reminder;->eventId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/clockwork/calendar/Reminder;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/clockwork/calendar/Reminder;->method:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/wearable/DataMap;
    .locals 3
    .param p1, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 15
    const-string v0, "event_id"

    iget-wide v1, p0, Lcom/google/android/clockwork/calendar/Reminder;->eventId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    .line 16
    const-string v0, "minute"

    iget v1, p0, Lcom/google/android/clockwork/calendar/Reminder;->minute:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 17
    const-string v0, "method"

    iget v1, p0, Lcom/google/android/clockwork/calendar/Reminder;->method:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 18
    return-object p1
.end method
