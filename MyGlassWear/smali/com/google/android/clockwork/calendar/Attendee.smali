.class public Lcom/google/android/clockwork/calendar/Attendee;
.super Ljava/lang/Object;
.source "Attendee.java"


# static fields
.field private static final CONTACT_INFO:Ljava/lang/String; = "contact_info"

.field private static final EMAIL:Ljava/lang/String; = "email"

.field private static final EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final RELATIONSHIP:Ljava/lang/String; = "relationship"

.field private static final STATUS:Ljava/lang/String; = "status"


# instance fields
.field public contactInfo:Lcom/google/android/clockwork/contact/ContactInfo;

.field public email:Ljava/lang/String;

.field public eventId:J

.field public name:Ljava/lang/String;

.field public relationship:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/clockwork/calendar/Attendee;
    .locals 4
    .param p1, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    const/4 v3, 0x0

    .line 36
    const-string v1, "event_id"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/DataMap;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->eventId:J

    .line 37
    const-string v1, "email"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->email:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iput-object v3, p0, Lcom/google/android/clockwork/calendar/Attendee;->email:Ljava/lang/String;

    .line 41
    :cond_0
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->name:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iput-object v3, p0, Lcom/google/android/clockwork/calendar/Attendee;->name:Ljava/lang/String;

    .line 45
    :cond_1
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->status:I

    .line 46
    const-string v1, "relationship"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->relationship:I

    .line 47
    const-string v1, "contact_info"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/wearable/DataMap;->getDataMap(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v0

    .line 48
    .local v0, "contactInfoData":Lcom/google/android/gms/wearable/DataMap;
    if-eqz v0, :cond_2

    .line 49
    new-instance v1, Lcom/google/android/clockwork/contact/ContactInfo;

    invoke-direct {v1}, Lcom/google/android/clockwork/contact/ContactInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/clockwork/contact/ContactInfo;->readFromDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/clockwork/contact/ContactInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->contactInfo:Lcom/google/android/clockwork/contact/ContactInfo;

    .line 51
    :cond_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 56
    const-string v0, "Attendee{eventId=%s,email=%s,name=%s,status=%d,relationship=%d,contactInfo=%s}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/google/android/clockwork/calendar/Attendee;->eventId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/clockwork/calendar/Attendee;->email:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/clockwork/calendar/Attendee;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/clockwork/calendar/Attendee;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/clockwork/calendar/Attendee;->relationship:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/clockwork/calendar/Attendee;->contactInfo:Lcom/google/android/clockwork/contact/ContactInfo;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/wearable/DataMap;
    .locals 3
    .param p1, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 24
    const-string v0, "event_id"

    iget-wide v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->eventId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    .line 25
    const-string v1, "email"

    iget-object v0, p0, Lcom/google/android/clockwork/calendar/Attendee;->email:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "name"

    iget-object v0, p0, Lcom/google/android/clockwork/calendar/Attendee;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "status"

    iget v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->status:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 28
    const-string v0, "relationship"

    iget v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->relationship:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 29
    iget-object v0, p0, Lcom/google/android/clockwork/calendar/Attendee;->contactInfo:Lcom/google/android/clockwork/contact/ContactInfo;

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "contact_info"

    iget-object v1, p0, Lcom/google/android/clockwork/calendar/Attendee;->contactInfo:Lcom/google/android/clockwork/contact/ContactInfo;

    new-instance v2, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v2}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/clockwork/contact/ContactInfo;->writeToDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    .line 32
    :cond_0
    return-object p1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/clockwork/calendar/Attendee;->email:Ljava/lang/String;

    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/google/android/clockwork/calendar/Attendee;->name:Ljava/lang/String;

    goto :goto_1
.end method
