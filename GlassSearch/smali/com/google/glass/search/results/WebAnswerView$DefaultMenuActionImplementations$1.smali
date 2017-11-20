.class Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$1;
.super Ljava/lang/Object;
.source "WebAnswerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->getDefaultBehaviorForMenuAction(Lorg/json/JSONObject;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

.field final synthetic val$lang:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$1;->this$1:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    iput-object p2, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$1;->val$value:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$1;->val$lang:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$1;->this$1:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    iget-object v0, v0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v0}, Lcom/google/glass/search/results/WebAnswerView;->access$100(Lcom/google/glass/search/results/WebAnswerView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$1;->val$value:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$1;->val$lang:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->formatAndSpeakText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 559
    return-void
.end method
