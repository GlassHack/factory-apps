.class Lcom/google/glass/voice/VoiceMenuDialog$4;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$4;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$4;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$200(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$4;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$200(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 289
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 299
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 265
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$4;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$200(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$4;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$700(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$4;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$200(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1, p2, p3}, Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x2

    return v0
.end method
