.class Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "CommandReceiverListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/CommandReceiverListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/CommandReceiverListFragment;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/voice/CommandReceiverListFragment;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/CommandReceiverListFragment;

    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/voice/CommandReceiverListFragment;Lcom/google/glass/home/voice/CommandReceiverListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/voice/CommandReceiverListFragment;
    .param p2, "x1"    # Lcom/google/glass/home/voice/CommandReceiverListFragment$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;-><init>(Lcom/google/glass/home/voice/CommandReceiverListFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/CommandReceiverListFragment;

    invoke-static {v0}, Lcom/google/glass/home/voice/CommandReceiverListFragment;->access$100(Lcom/google/glass/home/voice/CommandReceiverListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/CommandReceiverListFragment;

    invoke-static {v0}, Lcom/google/glass/home/voice/CommandReceiverListFragment;->access$100(Lcom/google/glass/home/voice/CommandReceiverListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/CommandReceiverListFragment;

    invoke-static {v1}, Lcom/google/glass/home/voice/CommandReceiverListFragment;->access$100(Lcom/google/glass/home/voice/CommandReceiverListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/MainMenuCommandReceiver;

    .line 55
    .local v0, "receiver":Lcom/google/glass/home/voice/MainMenuCommandReceiver;
    if-nez p2, :cond_0

    .line 56
    iget-object v1, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/CommandReceiverListFragment;

    .line 57
    invoke-virtual {v1}, Lcom/google/glass/home/voice/CommandReceiverListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/voice/CommandReceiverListFragment$ListAdapter;->this$0:Lcom/google/glass/home/voice/CommandReceiverListFragment;

    invoke-static {v2}, Lcom/google/glass/home/voice/CommandReceiverListFragment;->access$200(Lcom/google/glass/home/voice/CommandReceiverListFragment;)Lcom/google/glass/app/GlassActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/google/glass/home/voice/MainMenuCommandReceiver;->createTouchMenuView(Landroid/view/LayoutInflater;Lcom/google/glass/app/GlassActivity;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/glass/home/voice/MainMenuCommandReceiver;->bind(Landroid/view/View;)V

    .line 61
    return-object p2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
