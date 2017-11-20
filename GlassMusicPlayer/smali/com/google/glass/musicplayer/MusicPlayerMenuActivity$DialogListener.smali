.class Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$1;)V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;-><init>(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->access$600(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V

    .line 504
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->access$600(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V

    .line 509
    return-void
.end method
