.class Lcom/google/glass/musicplayer/PackageManagerReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/PackageManagerReceiver;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$xdiContentUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/PackageManagerReceiver;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/glass/musicplayer/PackageManagerReceiver$1;->this$0:Lcom/google/glass/musicplayer/PackageManagerReceiver;

    iput-object p2, p0, Lcom/google/glass/musicplayer/PackageManagerReceiver$1;->val$xdiContentUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/glass/musicplayer/PackageManagerReceiver$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/google/glass/musicplayer/PackageManagerReceiver$1;->val$xdiContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "browse"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "headers"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 80
    iget-object v0, p0, Lcom/google/glass/musicplayer/PackageManagerReceiver$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 82
    return-void
.end method
