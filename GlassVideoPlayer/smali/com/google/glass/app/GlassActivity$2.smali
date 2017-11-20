.class Lcom/google/glass/app/GlassActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/widget/GlassTipsManager$TipsCondition;


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity$2;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowTips()Z
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 172
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$2;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/app/GlassActivity;->access$100(Lcom/google/glass/app/GlassActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$2;->this$0:Lcom/google/glass/app/GlassActivity;

    iget-boolean v0, v0, Lcom/google/glass/app/GlassActivity;->isResumed:Z

    if-nez v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$2;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->hasMenu()Z

    move-result v0

    goto :goto_0
.end method

.method public getTipsText()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    return-object v0
.end method
