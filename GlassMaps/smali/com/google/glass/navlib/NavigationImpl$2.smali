.class Lcom/google/glass/navlib/NavigationImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/navlib/NavigationImpl;


# direct methods
.method constructor <init>(Lcom/google/glass/navlib/NavigationImpl;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl$2;->this$0:Lcom/google/glass/navlib/NavigationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/google/glass/navlib/NavigationImpl;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "ParameterManager initialization failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    return-void
.end method
