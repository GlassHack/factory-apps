.class Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$1;
.super Ljava/lang/Object;
.source "PhoneNumberDisambiguationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$1;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment$1;->this$0:Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;

    invoke-static {v0}, Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;->access$000(Lcom/google/glass/home/voice/PhoneNumberDisambiguationFragment;)V

    .line 56
    return-void
.end method
