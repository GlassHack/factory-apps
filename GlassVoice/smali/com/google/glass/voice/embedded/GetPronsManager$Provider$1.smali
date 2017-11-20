.class Lcom/google/glass/voice/embedded/GetPronsManager$Provider$1;
.super Ljava/lang/Object;
.source "GetPronsManager.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/embedded/GetPronsManager$Provider;->get(Ljava/util/Locale;)Lcom/google/glass/voice/embedded/GetPronsManager;
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
        "Lcom/google/glass/voice/embedded/GetPronsManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/embedded/GetPronsManager$Provider;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/embedded/GetPronsManager$Provider;Ljava/util/Locale;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/embedded/GetPronsManager$Provider;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/glass/voice/embedded/GetPronsManager$Provider$1;->this$0:Lcom/google/glass/voice/embedded/GetPronsManager$Provider;

    iput-object p2, p0, Lcom/google/glass/voice/embedded/GetPronsManager$Provider$1;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/voice/embedded/GetPronsManager;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/google/glass/voice/embedded/GetPronsManager;

    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/embedded/GetPronsManager$Provider$1;->val$locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/embedded/GetPronsManager;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/util/Locale;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/glass/voice/embedded/GetPronsManager$Provider$1;->get()Lcom/google/glass/voice/embedded/GetPronsManager;

    move-result-object v0

    return-object v0
.end method
