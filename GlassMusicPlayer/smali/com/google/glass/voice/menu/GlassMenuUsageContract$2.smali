.class Lcom/google/glass/voice/menu/GlassMenuUsageContract$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuUsageContract;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$2;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    iput-object p2, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$2;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$2;->val$name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->access$200(Lcom/google/glass/voice/menu/GlassMenuUsageContract;Ljava/lang/String;)V

    .line 345
    return-void
.end method
