.class public final Lcom/google/android/gms/common/audience/widgets/AudienceView;
.super Landroid/widget/FrameLayout;


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/g;

.field private d:Lcom/google/android/gms/common/audience/widgets/b;

.field private e:Lcom/google/android/gms/common/audience/widgets/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/common/audience/widgets/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/g;

    iput-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/internal/g;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->b:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/internal/g;

    invoke-virtual {p0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/c;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/audience/widgets/a;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/audience/widgets/a;-><init>(Lcom/google/android/gms/common/audience/widgets/AudienceView;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/dynamic/c;Lcom/google/android/gms/dynamic/c;Lcom/google/android/gms/internal/k;)V

    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/internal/g;

    invoke-interface {v0}, Lcom/google/android/gms/internal/g;->a()Lcom/google/android/gms/dynamic/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/g;->a(Lcom/google/android/gms/dynamic/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Landroid/util/Pair;
    .locals 3

    sget-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.android.gms.plus.audience.widgets.AudienceViewImpl$DynamiteHost"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Lcom/google/android/gms/internal/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/g;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    if-eqz v0, :cond_1

    const-string v1, "AudienceView"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AudienceView"

    const-string v2, "Can\'t load com.google.android.gms.plus.audience.widgets.AudienceViewImpl$DynamiteHost"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/google/android/gms/common/audience/widgets/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/audience/widgets/d;-><init>(Lcom/google/android/gms/common/audience/widgets/a;)V

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/common/audience/widgets/AudienceView;)Lcom/google/android/gms/common/audience/widgets/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->e:Lcom/google/android/gms/common/audience/widgets/c;

    return-object v0
.end method

.method private a(ILcom/google/android/gms/common/audience/widgets/b;Lcom/google/android/gms/common/audience/widgets/c;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->d:Lcom/google/android/gms/common/audience/widgets/b;

    iput-object p3, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->e:Lcom/google/android/gms/common/audience/widgets/c;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/internal/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/g;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/common/audience/widgets/AudienceView;)Lcom/google/android/gms/common/audience/widgets/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->d:Lcom/google/android/gms/common/audience/widgets/b;

    return-object v0
.end method


# virtual methods
.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/internal/g;

    const-string v1, "impl"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/g;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "parent"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :try_start_0
    const-string v1, "impl"

    iget-object v2, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/internal/g;

    invoke-interface {v2}, Lcom/google/android/gms/internal/g;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setAudience(Lcom/google/android/gms/common/people/data/Audience;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/internal/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/common/people/data/Audience;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final setModeClickToEdit(Lcom/google/android/gms/common/audience/widgets/b;)V
    .locals 3

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/audience/widgets/b;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(ILcom/google/android/gms/common/audience/widgets/b;Lcom/google/android/gms/common/audience/widgets/c;)V

    return-void
.end method

.method public final setModeClickToRemove(Lcom/google/android/gms/common/audience/widgets/c;)V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/audience/widgets/c;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(ILcom/google/android/gms/common/audience/widgets/b;Lcom/google/android/gms/common/audience/widgets/c;)V

    return-void
.end method

.method public final setModeReadonly()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/common/audience/widgets/AudienceView;->a(ILcom/google/android/gms/common/audience/widgets/b;Lcom/google/android/gms/common/audience/widgets/c;)V

    return-void
.end method

.method public final setShowEmptyText(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/widgets/AudienceView;->c:Lcom/google/android/gms/internal/g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/g;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
