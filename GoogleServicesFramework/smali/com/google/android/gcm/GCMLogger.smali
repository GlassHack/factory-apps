.class Lcom/google/android/gcm/GCMLogger;
.super Ljava/lang/Object;
.source "GCMLogger.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mLogPrefix:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "logPrefix"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/gcm/GCMLogger;->mTag:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/google/android/gcm/GCMLogger;->mLogPrefix:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method protected varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "template"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/android/gcm/GCMLogger;->mTag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gcm/GCMLogger;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gcm/GCMLogger;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method
