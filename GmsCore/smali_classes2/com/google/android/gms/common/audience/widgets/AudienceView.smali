.class public final Lcom/google/android/gms/common/audience/widgets/AudienceView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/common/audience/b/a;

.field private d:Lcom/google/android/gms/common/audience/widgets/b;

.field private e:Lcom/google/android/gms/common/audience/widgets/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/common/audience/widgets/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    .line 82
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/audience/b/a;

    iput-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/common/audience/b/a;

    .line 83
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->b:Landroid/content/Context;

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/common/audience/b/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/audience/widgets/a;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/audience/widgets/a;-><init>(Lcom/google/android/gms/common/audience/widgets/AudienceView;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/common/audience/b/a;->a(Lcom/google/android/gms/e/i;Lcom/google/android/gms/e/i;Lcom/google/android/gms/common/audience/b/d;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/common/audience/b/a;

    invoke-interface {v0}, Lcom/google/android/gms/common/audience/b/a;->a()Lcom/google/android/gms/e/i;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Landroid/util/Pair;
    .locals 3

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 110
    invoke-static {p0}, Lcom/google/android/gms/common/k;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a:Landroid/content/Context;

    .line 113
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 116
    :try_start_0
    const-string v1, "com.google.android.gms.plus.audience.widgets.AudienceViewImpl$DynamiteHost"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 120
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Lcom/google/android/gms/common/audience/b/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/audience/b/a;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 136
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 130
    :goto_1
    const-string v1, "AudienceView"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "AudienceView"

    const-string v2, "Can\'t load com.google.android.gms.plus.audience.widgets.AudienceViewImpl$DynamiteHost"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :cond_1
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/google/android/gms/common/audience/widgets/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/audience/widgets/c;-><init>(B)V

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    goto :goto_1

    .line 122
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/common/audience/widgets/AudienceView;)Lcom/google/android/gms/common/audience/widgets/d;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->e:Lcom/google/android/gms/common/audience/widgets/d;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/audience/widgets/AudienceView;)Lcom/google/android/gms/common/audience/widgets/b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->d:Lcom/google/android/gms/common/audience/widgets/b;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/common/audience/b/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/b/a;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/audience/widgets/b;)V
    .locals 2

    .prologue
    .line 195
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/audience/widgets/b;

    iput-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->d:Lcom/google/android/gms/common/audience/widgets/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->e:Lcom/google/android/gms/common/audience/widgets/d;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/common/audience/b/a;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/b/a;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/people/data/Audience;)V
    .locals 1

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/common/audience/b/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/audience/b/a;->a(Lcom/google/android/gms/common/people/data/Audience;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 209
    check-cast p1, Landroid/os/Bundle;

    .line 210
    const-string v0, "parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/common/audience/b/a;

    const-string v1, "impl"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/b/a;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    const-string v1, "parent"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    :try_start_0
    const-string v1, "impl"

    iget-object v2, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/common/audience/b/a;

    invoke-interface {v2}, Lcom/google/android/gms/common/audience/b/a;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
