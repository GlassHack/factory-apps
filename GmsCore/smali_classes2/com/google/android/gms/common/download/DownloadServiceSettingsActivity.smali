.class public Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;
.super Landroid/support/v7/a/d;
.source "SourceFile"


# static fields
.field private static final n:Lcom/google/android/gms/common/download/a;

.field private static final o:[Ljava/lang/String;


# instance fields
.field private final p:Ljava/lang/Runnable;

.field private q:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gms/common/download/a;

    const-string v1, "__cats.jpg"

    const-string v2, "https://i.imgur.com/oNmqoJU.jpg"

    const-string v3, "54cb88b9af7c5f2bd967165fe0c4c9b93a1089eb"

    const-string v4, "cats"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/download/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->n:Lcom/google/android/gms/common/download/a;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "text1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->o:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v7/a/d;-><init>()V

    .line 54
    new-instance v0, Lcom/google/android/gms/common/download/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/download/b;-><init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->p:Ljava/lang/Runnable;

    .line 240
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sparse-switch p0, :sswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "Failed"

    goto :goto_0

    :sswitch_1
    const-string v0, "Paused"

    goto :goto_0

    :sswitch_2
    const-string v0, "Pending"

    goto :goto_0

    :sswitch_3
    const-string v0, "Running"

    goto :goto_0

    :sswitch_4
    const-string v0, "Successful"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_1
        0x8 -> :sswitch_4
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic e()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->o:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Lcom/google/android/gms/common/download/a;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->n:Lcom/google/android/gms/common/download/a;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/support/v7/a/d;->onCreate(Landroid/os/Bundle;)V

    .line 139
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 140
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->setContentView(Landroid/view/View;)V

    .line 143
    const-string v0, "Download Service debug"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->q:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 150
    .line 151
    const-string v0, "Start DownloadService Now"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/google/android/gms/common/download/c;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/download/c;-><init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 161
    const-string v0, "Enable Kitty"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/google/android/gms/common/download/d;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/download/d;-><init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 178
    const-string v0, "Disable Kitty"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 179
    new-instance v1, Lcom/google/android/gms/common/download/e;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/download/e;-><init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 195
    const-string v0, "View Kitty"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/google/android/gms/common/download/f;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/download/f;-><init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 213
    invoke-super {p0, p1}, Landroid/support/v7/a/d;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-super {p0}, Landroid/support/v7/a/d;->onStart()V

    .line 219
    new-instance v0, Lcom/google/android/gms/common/download/g;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/download/g;-><init>(Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/download/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Landroid/support/v7/a/d;->onStop()V

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/download/DownloadServiceSettingsActivity;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method
