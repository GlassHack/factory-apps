.class public Lcom/google/glass/setup/PhoneSelectionAdapter;
.super Lcom/google/glass/setup/ArrayListCardScrollAdapter;
.source "PhoneSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/setup/ArrayListCardScrollAdapter",
        "<",
        "Lcom/google/glass/setup/SetupFlowController$SetupMethod;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/setup/ArrayListCardScrollAdapter;-><init>(Landroid/content/Context;Z)V

    .line 16
    iget-object v0, p0, Lcom/google/glass/setup/PhoneSelectionAdapter;->itemList:Ljava/util/List;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->ANDROID:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/google/glass/setup/PhoneSelectionAdapter;->itemList:Ljava/util/List;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->IPHONE:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/google/glass/setup/PhoneSelectionAdapter;->itemList:Ljava/util/List;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->COMPUTER:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/glass/setup/PhoneSelectionAdapter;->itemList:Ljava/util/List;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->HELP:Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method


# virtual methods
.method public fillView(ILandroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/google/glass/setup/PhoneSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;

    .line 25
    .local v0, "item":Lcom/google/glass/setup/SetupFlowController$SetupMethod;
    sget v1, Lcom/google/glass/setup/R$id;->phoneName:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->resourcePhoneName:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 26
    sget v1, Lcom/google/glass/setup/R$id;->instruction:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->resourceInstruction:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 27
    sget v1, Lcom/google/glass/setup/R$id;->phoneIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, v0, Lcom/google/glass/setup/SetupFlowController$SetupMethod;->resourcePhoneIcon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/google/glass/setup/R$layout;->choose_phone_view_item:I

    return v0
.end method
