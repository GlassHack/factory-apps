.class public final Lcom/google/android/gms/cast/ApplicationMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/List;

.field d:Ljava/util/List;

.field e:Ljava/lang/String;

.field f:Landroid/net/Uri;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/gms/cast/a;

    invoke-direct {v0}, Lcom/google/android/gms/cast/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/ApplicationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->g:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->c:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->d:Ljava/util/List;

    .line 82
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->g:I

    .line 63
    iput-object p2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->a:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->b:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->c:Ljava/util/List;

    .line 66
    iput-object p5, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->d:Ljava/util/List;

    .line 67
    iput-object p6, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->e:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->f:Landroid/net/Uri;

    .line 69
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->g:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    if-ne p1, p0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/cast/ApplicationMetadata;

    if-nez v2, :cond_2

    move v0, v1

    .line 194
    goto :goto_0

    .line 196
    :cond_2
    check-cast p1, Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 197
    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->c:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->f:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->f:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->c:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->c:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->d:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->f:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 179
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/a;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Landroid/os/Parcel;I)V

    .line 180
    return-void
.end method
