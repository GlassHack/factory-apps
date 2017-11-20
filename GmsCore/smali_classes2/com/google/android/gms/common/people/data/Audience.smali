.class public final Lcom/google/android/gms/common/people/data/Audience;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/people/data/b;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/gms/common/people/data/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/people/data/Audience;->CREATOR:Lcom/google/android/gms/common/people/data/b;

    return-void
.end method

.method constructor <init>(ILjava/util/List;IZZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 84
    :cond_0
    iput p1, p0, Lcom/google/android/gms/common/people/data/Audience;->a:I

    .line 85
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/people/data/Audience;->b:Ljava/util/List;

    .line 86
    iput p3, p0, Lcom/google/android/gms/common/people/data/Audience;->c:I

    .line 88
    if-ne p1, v0, :cond_2

    .line 89
    iput-boolean p4, p0, Lcom/google/android/gms/common/people/data/Audience;->d:Z

    .line 90
    if-nez p4, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->e:Z

    .line 95
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    iput-boolean p5, p0, Lcom/google/android/gms/common/people/data/Audience;->e:Z

    .line 93
    if-nez p5, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->d:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method constructor <init>(Ljava/util/List;IZ)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/people/data/Audience;->a:I

    .line 106
    iput-object p1, p0, Lcom/google/android/gms/common/people/data/Audience;->b:Ljava/util/List;

    .line 107
    iput p2, p0, Lcom/google/android/gms/common/people/data/Audience;->c:I

    .line 108
    iput-boolean p3, p0, Lcom/google/android/gms/common/people/data/Audience;->e:Z

    .line 110
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->d:Z

    .line 111
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/common/people/data/Audience;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/google/android/gms/common/people/data/Audience;->c:I

    return v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/gms/common/people/data/Audience;->a:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->e:Z

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method final e()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    instance-of v1, p1, Lcom/google/android/gms/common/people/data/Audience;

    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/people/data/Audience;

    .line 175
    iget v1, p0, Lcom/google/android/gms/common/people/data/Audience;->a:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/Audience;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/Audience;->b:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/Audience;->b:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/Audience;->c:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/Audience;->c:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/common/people/data/Audience;->e:Z

    iget-boolean v2, p1, Lcom/google/android/gms/common/people/data/Audience;->e:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/people/data/Audience;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/Audience;->b:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/people/data/Audience;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/common/people/data/Audience;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 188
    invoke-static {p0, p1}, Lcom/google/android/gms/common/people/data/b;->a(Lcom/google/android/gms/common/people/data/Audience;Landroid/os/Parcel;)V

    .line 189
    return-void
.end method
