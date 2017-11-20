.class public Lcom/google/glass/home/voice/CommandReceiverListFragment;
.super Lcom/google/glass/entity/EntityListFragment;
.source "CommandReceiverListFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/CommandReceiverListFragment$1;,
        Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;
    }
.end annotation


# instance fields
.field private final activity:Lcom/google/glass/app/GlassActivity;

.field private final adapter:Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;

.field private final commandReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/MainMenuCommandReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Ljava/util/List;)V
    .locals 2
    .param p1, "environment"    # Lcom/google/glass/app/GlassActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/app/GlassActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/MainMenuCommandReceiver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "commandReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/home/voice/MainMenuCommandReceiver;>;"
    invoke-direct {p0}, Lcom/google/glass/entity/EntityListFragment;-><init>()V

    .line 29
    new-instance v0, Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;-><init>(Lcom/google/glass/home/voice/CommandReceiverListFragment;Lcom/google/glass/home/voice/CommandReceiverListFragment$1;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment;->adapter:Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;

    .line 33
    iput-object p1, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment;->activity:Lcom/google/glass/app/GlassActivity;

    .line 34
    iput-object p2, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment;->commandReceivers:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/CommandReceiverListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/voice/CommandReceiverListFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment;->commandReceivers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/CommandReceiverListFragment;)Lcom/google/glass/app/GlassActivity;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/voice/CommandReceiverListFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment;->activity:Lcom/google/glass/app/GlassActivity;

    return-object v0
.end method


# virtual methods
.method protected getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment;->adapter:Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;

    return-object v0
.end method

.method protected showFastScrollLabel(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment;->commandReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/MainMenuCommandReceiver;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/MainMenuCommandReceiver;->showFastScrollLabel()Z

    move-result v0

    return v0
.end method
