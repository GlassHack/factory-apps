.class Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$4;
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

.field final synthetic val$webSiteUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$4;->this$1:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    iput-object p2, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$4;->val$webSiteUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$4;->this$1:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    invoke-static {v0}, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->access$200(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;)Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$4;->val$webSiteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onOpenUri(Ljava/lang/String;)Z

    .line 597
    return-void
.end method
