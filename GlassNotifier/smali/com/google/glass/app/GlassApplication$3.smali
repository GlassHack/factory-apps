.class Lcom/google/glass/app/GlassApplication$3;
.super Ljava/lang/Object;
.source "GlassApplication.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/GlassApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/util/CachedBitmapFactory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/app/GlassApplication;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication$3;->this$0:Lcom/google/glass/app/GlassApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication$3;->this$0:Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->createBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication$3;->get()Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v0

    return-object v0
.end method
