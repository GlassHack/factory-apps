.class Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$5;
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

.field final synthetic val$videoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$5;->this$1:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    iput-object p2, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$5;->val$videoUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$5;->this$1:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    iget-object v0, v0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    invoke-static {v0}, Lcom/google/glass/search/results/WebAnswerView;->access$100(Lcom/google/glass/search/results/WebAnswerView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "video_url"

    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$5;->val$videoUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineActivityHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method
