.class Lcom/google/glass/userevent/UserEventHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventHelper$4;->this$0:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventHelper$4;->this$0:Lcom/google/glass/userevent/UserEventHelper;

    invoke-static {v0}, Lcom/google/glass/userevent/UserEventHelper;->access$100(Lcom/google/glass/userevent/UserEventHelper;)V

    .line 303
    return-void
.end method
