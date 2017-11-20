.class public final Lcom/google/maps/api/android/lib6/gmm6/m/ac;
.super Lcom/google/maps/api/android/lib6/gmm6/m/ae;


# static fields
.field public static final e:Lcom/google/maps/api/android/lib6/gmm6/m/ad;


# instance fields
.field private g:Z

.field private volatile h:Lcom/google/maps/api/android/lib6/gmm6/m/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/ad;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/ad;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/ac;->e:Lcom/google/maps/api/android/lib6/gmm6/m/ad;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/gmm6/l/av;IFLjava/util/Locale;ZLjava/io/File;Lcom/google/maps/api/android/lib6/gmm6/m/ad;)V
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/google/maps/api/android/lib6/gmm6/m/ae;-><init>(Lcom/google/maps/api/android/lib6/b/o;Lcom/google/maps/api/android/lib6/gmm6/l/av;IFLjava/util/Locale;ZLjava/io/File;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/ac;->g:Z

    iput-object p8, p0, Lcom/google/maps/api/android/lib6/gmm6/m/ac;->h:Lcom/google/maps/api/android/lib6/gmm6/m/ad;

    return-void
.end method

.method public static j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/ac;->c(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    return-void
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/ac;->h:Lcom/google/maps/api/android/lib6/gmm6/m/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/ac;->h:Lcom/google/maps/api/android/lib6/gmm6/m/ad;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    return-void
.end method
