.class public Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;
.super Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
.source "PushMessagingRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnregisterRequest"
.end annotation


# instance fields
.field mIsUnregCallerGCM:Z

.field public mUserAid:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appPackage"    # Ljava/lang/String;
    .param p4, "isUnregCallerGCM"    # Z
    .param p5, "uid"    # I

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput-boolean p4, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mIsUnregCallerGCM:Z

    .line 272
    iput p5, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mUid:I

    .line 273
    return-void
.end method
