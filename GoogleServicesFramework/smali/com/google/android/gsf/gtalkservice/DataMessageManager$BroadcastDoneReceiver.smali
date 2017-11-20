.class public Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/DataMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastDoneReceiver"
.end annotation


# instance fields
.field private mBroadcastIntent:Landroid/content/Intent;

.field private mBroadcastStartTime:J

.field private mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

.field private mMsg:Lorg/jivesoftware/smack/packet/DataMessage;

.field protected mResult:I

.field protected mUserAid:Ljava/lang/String;

.field protected mUserSerial:I


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/DataMessageManager;Landroid/content/Intent;Lorg/jivesoftware/smack/packet/DataMessage;J)V
    .locals 0
    .param p1, "dataMessageManager"    # Lcom/google/android/gsf/gtalkservice/DataMessageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "msg"    # Lorg/jivesoftware/smack/packet/DataMessage;
    .param p4, "ts"    # J

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    .line 170
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mBroadcastIntent:Landroid/content/Intent;

    .line 171
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mMsg:Lorg/jivesoftware/smack/packet/DataMessage;

    .line 172
    iput-wide p4, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mBroadcastStartTime:J

    .line 173
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unsafeIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mBroadcastStartTime:J

    sub-long v3, v0, v5

    .line 180
    .local v3, "duration":J
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->getResultCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mResult:I

    .line 182
    const-string v0, "GTalkService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcast done: timeElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->getResultData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->access$000(Ljava/lang/String;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mBroadcastIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mMsg:Lorg/jivesoftware/smack/packet/DataMessage;

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mResult:I

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v6

    iget v7, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mUserSerial:I

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mUserAid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->afterBroadcast(Landroid/content/Intent;Lorg/jivesoftware/smack/packet/DataMessage;JILandroid/os/Bundle;ILjava/lang/String;)V

    .line 189
    return-void
.end method
