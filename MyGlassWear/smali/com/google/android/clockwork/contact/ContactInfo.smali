.class public Lcom/google/android/clockwork/contact/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# static fields
.field private static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field private static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final EMAIL:Ljava/lang/String; = "email"

.field private static final PROFILE_PICTURE:Ljava/lang/String; = "profile_picture"


# instance fields
.field public contactId:I

.field public displayName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public profileAsset:Lcom/google/android/gms/wearable/Asset;

.field public smallProfilePicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/clockwork/contact/ContactInfo;
    .locals 1
    .param p1, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 34
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/clockwork/contact/ContactInfo;->contactId:I

    .line 35
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/contact/ContactInfo;->email:Ljava/lang/String;

    .line 36
    const-string v0, "display_name"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/contact/ContactInfo;->displayName:Ljava/lang/String;

    .line 37
    const-string v0, "profile_picture"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/DataMap;->getAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/contact/ContactInfo;->profileAsset:Lcom/google/android/gms/wearable/Asset;

    .line 38
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    const-string v1, "ContactInfo{contactId=%d,email=%s,displayName=%s,profileAsset=%s}"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/clockwork/contact/ContactInfo;->contactId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/android/clockwork/contact/ContactInfo;->email:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/clockwork/contact/ContactInfo;->displayName:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/android/clockwork/contact/ContactInfo;->profileAsset:Lcom/google/android/gms/wearable/Asset;

    if-nez v0, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/contact/ContactInfo;->profileAsset:Lcom/google/android/gms/wearable/Asset;

    goto :goto_0
.end method

.method public writeToDataMap(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/wearable/DataMap;
    .locals 2
    .param p1, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 24
    const-string v0, "contact_id"

    iget v1, p0, Lcom/google/android/clockwork/contact/ContactInfo;->contactId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 25
    const-string v0, "email"

    iget-object v1, p0, Lcom/google/android/clockwork/contact/ContactInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "display_name"

    iget-object v1, p0, Lcom/google/android/clockwork/contact/ContactInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/clockwork/contact/ContactInfo;->profileAsset:Lcom/google/android/gms/wearable/Asset;

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "profile_picture"

    iget-object v1, p0, Lcom/google/android/clockwork/contact/ContactInfo;->profileAsset:Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 30
    :cond_0
    return-object p1
.end method
