.class Lcom/google/glass/search/VoiceSearchResultsActivity$2;
.super Ljava/lang/Object;
.source "VoiceSearchResultsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/VoiceSearchResultsActivity;->createSwipeDiscoveryLogger()Landroid/widget/AdapterView$OnItemSelectedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private swipeLogged:Z

.field final synthetic this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/search/VoiceSearchResultsActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$2;->swipeLogged:Z

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "index"    # J
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
    .line 548
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$2;->swipeLogged:Z

    if-nez v0, :cond_0

    if-lez p3, :cond_0

    .line 549
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$2;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    invoke-static {v0}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$000(Lcom/google/glass/search/VoiceSearchResultsActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_SWIPE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$2;->swipeLogged:Z

    .line 552
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
