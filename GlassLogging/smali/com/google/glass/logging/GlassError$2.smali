.class final Lcom/google/glass/logging/GlassError$2;
.super Ljava/lang/Object;
.source "GlassError.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/GlassError;->report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$error:Lcom/google/glass/logging/GlassError;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/glass/logging/GlassError$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/logging/GlassError$2;->val$error:Lcom/google/glass/logging/GlassError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/glass/logging/GlassError$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/logging/GlassError$2;->val$error:Lcom/google/glass/logging/GlassError;

    iget-object v1, v1, Lcom/google/glass/logging/GlassError;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    invoke-static {v0, v1}, Lcom/google/glass/logging/RecoveryActionUtils;->handle(Landroid/content/Context;Lcom/google/glass/feedback/RecoveryAction;)V

    .line 226
    return-void
.end method
