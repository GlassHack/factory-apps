.class Lcom/google/glass/phone/PhoneApplication$1;
.super Ljava/lang/Object;
.source "PhoneApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 29
    iput-object p1, p0, Lcom/google/glass/phone/PhoneApplication$1;->this$0:Lcom/google/glass/phone/PhoneApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 32
    iget-object v1, p0, Lcom/google/glass/phone/PhoneApplication$1;->this$0:Lcom/google/glass/phone/PhoneApplication;

    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_INCOMING_RING:Lcom/google/glass/sound/SoundManager$SoundId;

    iget-object v3, p0, Lcom/google/glass/phone/PhoneApplication$1;->this$0:Lcom/google/glass/phone/PhoneApplication;

    .line 33
    invoke-static {v3}, Lcom/google/glass/phone/PhoneApplication;->access$100(Lcom/google/glass/phone/PhoneApplication;)Lcom/google/glass/sound/SoundManager$SoundCompletionListener;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)I

    move-result v0

    .line 32
    invoke-static {v1, v0}, Lcom/google/glass/phone/PhoneApplication;->access$002(Lcom/google/glass/phone/PhoneApplication;I)I

    .line 34
    return-void
.end method
