.class public interface abstract Lcom/google/android/gsf/TalkContract$PresenceColumns;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Lcom/google/android/gsf/TalkContract$CommonPresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PresenceColumns"
.end annotation


# static fields
.field public static final CAPABILITIES:Ljava/lang/String; = "cap"

.field public static final CAPABILITY_HAS_CAMERA_V1:I = 0x4

.field public static final CAPABILITY_HAS_PMUC_V1:I = 0x8

.field public static final CAPABILITY_HAS_VIDEO_V1:I = 0x2

.field public static final CAPABILITY_HAS_VOICE_V1:I = 0x1

.field public static final CLIENT_TYPE:Ljava/lang/String; = "client_type"

.field public static final CLIENT_TYPE_ANDROID:I = 0x2

.field public static final CLIENT_TYPE_DEFAULT:I = 0x0

.field public static final CLIENT_TYPE_MOBILE:I = 0x1

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final JID_RESOURCE:Ljava/lang/String; = "jid_resource"
