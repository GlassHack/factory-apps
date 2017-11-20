.class Lcom/google/glass/phone/PhoneApplication$2;
.super Ljava/lang/Object;
.source "PhoneApplication.java"

# interfaces
.implements Lcom/google/glass/sound/SoundManager$SoundCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/PhoneApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/phone/PhoneApplication;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/phone/PhoneApplication$2;->this$0:Lcom/google/glass/phone/PhoneApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSoundDone(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 4
    .param p1, "sound"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/phone/PhoneApplication$2;->this$0:Lcom/google/glass/phone/PhoneApplication;

    iget-boolean v0, v0, Lcom/google/glass/phone/PhoneApplication;->isRinging:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/google/glass/phone/PhoneApplication;->access$300()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/phone/PhoneApplication$2;->this$0:Lcom/google/glass/phone/PhoneApplication;

    invoke-static {v1}, Lcom/google/glass/phone/PhoneApplication;->access$200(Lcom/google/glass/phone/PhoneApplication;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :cond_0
    return-void
.end method

.method public onSoundFailed(Lcom/google/glass/sound/SoundManager$SoundId;I)V
    .locals 4
    .param p1, "sound"    # Lcom/google/glass/sound/SoundManager$SoundId;
    .param p2, "reason"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/phone/PhoneApplication$2;->this$0:Lcom/google/glass/phone/PhoneApplication;

    iget-boolean v0, v0, Lcom/google/glass/phone/PhoneApplication;->isRinging:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 55
    invoke-static {}, Lcom/google/glass/phone/PhoneApplication;->access$300()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/phone/PhoneApplication$2;->this$0:Lcom/google/glass/phone/PhoneApplication;

    invoke-static {v1}, Lcom/google/glass/phone/PhoneApplication;->access$200(Lcom/google/glass/phone/PhoneApplication;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    :cond_0
    return-void
.end method
