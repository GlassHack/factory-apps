.class Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$2;
.super Ljava/lang/Object;
.source "WebAnswerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;->handleTelUri(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient$2;->this$1:Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 782
    return-void
.end method
