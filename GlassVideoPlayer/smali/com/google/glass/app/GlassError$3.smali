.class Lcom/google/glass/app/GlassError$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassError;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassError;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/glass/app/GlassError$3;->this$0:Lcom/google/glass/app/GlassError;

    iput-object p2, p0, Lcom/google/glass/app/GlassError$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    iget-object v1, p0, Lcom/google/glass/app/GlassError$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SettingsHelper;->goToSettings(I)V

    .line 279
    return-void
.end method
