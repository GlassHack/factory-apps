.class Lcom/google/glass/app/GlassApplication$6;
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
        "Lcom/google/glass/net/ProtoRequestDispatcherPool;",
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
    .line 126
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication$6;->this$0:Lcom/google/glass/app/GlassApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/net/ProtoRequestDispatcherPool;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcherPool;

    iget-object v1, p0, Lcom/google/glass/app/GlassApplication$6;->this$0:Lcom/google/glass/app/GlassApplication;

    invoke-static {v1}, Lcom/google/glass/app/GlassApplication;->access$000(Lcom/google/glass/app/GlassApplication;)Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/app/GlassApplication$6;->this$0:Lcom/google/glass/app/GlassApplication;

    invoke-static {v2}, Lcom/google/glass/app/GlassApplication;->access$100(Lcom/google/glass/app/GlassApplication;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/net/ProtoRequestDispatcherPool;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/auth/AuthUtils;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication$6;->get()Lcom/google/glass/net/ProtoRequestDispatcherPool;

    move-result-object v0

    return-object v0
.end method
