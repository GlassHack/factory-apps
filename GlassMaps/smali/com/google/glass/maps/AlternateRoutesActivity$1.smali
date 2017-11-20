.class Lcom/google/glass/maps/AlternateRoutesActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/AlternateRoutesActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/AlternateRoutesActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/glass/maps/AlternateRoutesActivity$1;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/maps/AlternateRoutesActivity$1;->this$0:Lcom/google/glass/maps/AlternateRoutesActivity;

    invoke-static {v0}, Lcom/google/glass/maps/AlternateRoutesActivity;->access$100(Lcom/google/glass/maps/AlternateRoutesActivity;)Lcom/google/glass/maps/service/BackgroundMapRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->destroy()V

    .line 75
    return-void
.end method
