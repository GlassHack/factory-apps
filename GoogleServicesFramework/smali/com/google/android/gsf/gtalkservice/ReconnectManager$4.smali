.class Lcom/google/android/gsf/gtalkservice/ReconnectManager$4;
.super Ljava/lang/Object;
.source "ReconnectManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setConnectionError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$4;->this$0:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gsf/gtalkservice/Endpoint;I)V
    .locals 0
    .param p1, "connection"    # Lcom/google/android/gsf/gtalkservice/Endpoint;
    .param p2, "error"    # I

    .prologue
    .line 237
    invoke-virtual {p1, p2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionError(I)Z

    .line 238
    return-void
.end method
