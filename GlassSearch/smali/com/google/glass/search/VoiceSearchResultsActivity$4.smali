.class Lcom/google/glass/search/VoiceSearchResultsActivity$4;
.super Ljava/lang/Object;
.source "VoiceSearchResultsActivity.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/VoiceSearchResultsActivity;->openVoiceMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

.field final synthetic val$descriptor:Lcom/google/glass/widget/MenuItemDescriptor;


# direct methods
.method constructor <init>(Lcom/google/glass/search/VoiceSearchResultsActivity;Lcom/google/glass/widget/MenuItemDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/search/VoiceSearchResultsActivity;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$4;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    iput-object p2, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$4;->val$descriptor:Lcom/google/glass/widget/MenuItemDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 2
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$4;->this$0:Lcom/google/glass/search/VoiceSearchResultsActivity;

    iget-object v1, p0, Lcom/google/glass/search/VoiceSearchResultsActivity$4;->val$descriptor:Lcom/google/glass/widget/MenuItemDescriptor;

    invoke-virtual {v1}, Lcom/google/glass/widget/MenuItemDescriptor;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/search/VoiceSearchResultsActivity;->access$400(Lcom/google/glass/search/VoiceSearchResultsActivity;I)Z

    .line 676
    return-void
.end method
