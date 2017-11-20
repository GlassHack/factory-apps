.class Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$HelpDialog;
.super Lcom/google/glass/widget/SimpleDialog;
.source "ConnectivityStatusCardMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelpDialog"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "moreInfoToShow"    # Ljava/lang/CharSequence;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/google/glass/widget/SimpleDialog;-><init>(Landroid/content/Context;)V

    .line 135
    sget v0, Lcom/google/glass/settings/ui/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v0, p2}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$1;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity$HelpDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 140
    sget v0, Lcom/google/glass/settings/ui/R$layout;->connectivity_help_dialog:I

    return v0
.end method
