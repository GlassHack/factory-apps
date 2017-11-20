.class Lcom/google/glass/voice/menu/GlassMenuUsageContract$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

.field final synthetic val$data:Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuUsageContract;Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    iput-object p2, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$3;->val$data:Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->access$300(Lcom/google/glass/voice/menu/GlassMenuUsageContract;)V

    .line 382
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 383
    const-string v1, "command_literal"

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$3;->val$data:Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    iget-object v2, v2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->commandName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v1, "install_time"

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$3;->val$data:Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;

    iget-wide v2, v2, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->installTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 385
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    iget-object v1, v1, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 386
    return-void
.end method
