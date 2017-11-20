.class Lcom/google/glass/app/GlassApplication$4;
.super Ljava/lang/Object;
.source "GlassApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/GlassApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/app/GlassApplication;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication$4;->this$0:Lcom/google/glass/app/GlassApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityCache;->loadEntityDataCache()V

    .line 153
    return-void
.end method
