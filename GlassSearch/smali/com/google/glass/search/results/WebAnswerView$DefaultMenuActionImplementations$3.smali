.class Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$3;
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

.field final synthetic val$location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$3;->this$1:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    iput-object p2, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$3;->val$location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 582
    iget-object v1, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$3;->val$location:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    const/4 v2, 0x0

    .line 583
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "5"

    .line 582
    invoke-static {v1, v2, v3}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;Ljava/lang/Integer;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 585
    .local v0, "navigationIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 587
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations$3;->this$1:Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;

    invoke-static {v2}, Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;->access$300(Lcom/google/glass/search/results/WebAnswerView$DefaultMenuActionImplementations;)Lcom/google/glass/app/GlassActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 589
    :cond_0
    return-void
.end method
