.class Lcom/google/glass/search/VoiceSearchResultsActivity$1;
.super Ljava/lang/Object;
.source "VoiceSearchResultsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/VoiceSearchResultsActivity;->createOpenMenuListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/search/VoiceSearchResultsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$1;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p2, Lcom/google/glass/search/results/WebAnswerCard;

    .end local p2    # "view":Landroid/view/View;
    invoke-interface {p2}, Lcom/google/glass/search/results/WebAnswerCard;->requestMenu()Z

    .line 531
    return-void
.end method
