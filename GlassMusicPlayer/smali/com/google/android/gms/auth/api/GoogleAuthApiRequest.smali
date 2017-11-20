.class public Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/auth/api/a;


# instance fields
.field final b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Landroid/os/Bundle;

.field h:Ljava/lang/String;

.field i:Ljava/util/List;

.field j:Ljava/lang/String;

.field k:I

.field l:Landroid/os/Bundle;

.field m:[B

.field n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->a:Lcom/google/android/gms/auth/api/a;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/os/Bundle;[BJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->g:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->i:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->j:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->k:I

    iput-object p11, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->l:Landroid/os/Bundle;

    iput-object p12, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->m:[B

    iput-wide p13, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->n:J

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_1

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ API: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Scope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/a;->a(Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;Landroid/os/Parcel;I)V

    return-void
.end method
