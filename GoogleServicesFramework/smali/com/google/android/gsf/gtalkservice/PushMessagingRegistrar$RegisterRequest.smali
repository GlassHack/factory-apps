.class public Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;
.super Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
.source "PushMessagingRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegisterRequest"
.end annotation


# instance fields
.field mCert:Ljava/lang/String;

.field mDeveloperId:Ljava/lang/String;

.field mExtraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appPackage"    # Ljava/lang/String;
    .param p4, "developerId"    # Ljava/lang/String;
    .param p5, "cert"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p6, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iput-object p4, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mDeveloperId:Ljava/lang/String;

    .line 258
    iput-object p5, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mCert:Ljava/lang/String;

    .line 259
    iput-object p6, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mExtraParams:Ljava/util/Map;

    .line 260
    iput p7, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mUid:I

    .line 261
    return-void
.end method
