.class Lcom/google/glass/babel/AudioMessageHelper$Provider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/babel/AudioMessageHelper$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/babel/AudioMessageHelper$Provider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/glass/babel/AudioMessageHelper$Provider$1;->this$0:Lcom/google/glass/babel/AudioMessageHelper$Provider;

    iput-object p2, p0, Lcom/google/glass/babel/AudioMessageHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/babel/AudioMessageHelper;
    .locals 3

    .prologue
    .line 292
    new-instance v0, Lcom/google/glass/babel/AudioMessageHelper;

    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/babel/AudioMessageHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/babel/AudioMessageHelper;-><init>(Lcom/google/glass/time/Clock;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/google/glass/babel/AudioMessageHelper$Provider$1;->get()Lcom/google/glass/babel/AudioMessageHelper;

    move-result-object v0

    return-object v0
.end method
