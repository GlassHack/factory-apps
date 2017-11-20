.class public final Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/o;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/maps/model/LatLng;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/maps/o;

    invoke-direct {v0}, Lcom/google/android/gms/maps/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Lcom/google/android/gms/maps/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    .line 131
    iput v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->a:I

    .line 132
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBB)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    .line 75
    iput p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->a:I

    .line 76
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->b:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    .line 77
    iput-object p4, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->d:Lcom/google/android/gms/maps/model/LatLng;

    .line 78
    iput-object p5, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Integer;

    .line 79
    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->c:Ljava/lang/String;

    .line 80
    invoke-static {p6}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    .line 81
    invoke-static {p7}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    .line 82
    invoke-static {p8}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    .line 83
    invoke-static {p9}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    .line 84
    invoke-static {p10}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->j:Ljava/lang/Boolean;

    .line 85
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->a:I

    return v0
.end method

.method final b()B
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final c()B
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final d()B
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method final e()B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method final f()B
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->j:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->a(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public final g()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->b:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->d:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final i()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final l()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final m()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final n()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final o()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 94
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/o;->a(Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Parcel;I)V

    .line 95
    return-void
.end method
