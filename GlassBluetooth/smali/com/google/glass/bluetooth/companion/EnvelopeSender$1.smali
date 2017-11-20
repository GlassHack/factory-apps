.class Lcom/google/glass/bluetooth/companion/EnvelopeSender$1;
.super Landroid/os/Handler;
.source "EnvelopeSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/companion/EnvelopeSender;-><init>(Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/EnvelopeSender;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/EnvelopeSender;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/EnvelopeSender;
    .param p2, "arg0"    # Landroid/os/Looper;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender$1;->this$0:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    .line 40
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/EnvelopeSender$1;->this$0:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    invoke-virtual {v1, v0}, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->sendEnvelope(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 41
    return-void
.end method
