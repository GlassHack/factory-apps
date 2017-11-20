.class Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1$1;
.super Ljava/lang/Object;
.source "GlassMainMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1$1;->this$1:Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1$1;->this$1:Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity$1;->this$0:Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;->access$000(Lcom/google/android/apps/lightcycle/glass/GlassMainMenuActivity;)V

    .line 128
    return-void
.end method
