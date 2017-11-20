.class public final Lcom/google/android/maps/driveabout/model/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/maps/driveabout/model/s;

.field static final b:[Lcom/google/android/maps/driveabout/model/c;


# instance fields
.field A:Ljava/lang/Integer;

.field B:Z

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field c:J

.field d:Lcom/google/android/maps/driveabout/model/aw;

.field e:Lcom/google/android/maps/driveabout/model/ab;

.field f:Lcom/google/android/maps/driveabout/model/k;

.field g:I

.field h:I

.field i:[Lcom/google/android/maps/driveabout/model/a;

.field j:Lcom/google/android/maps/driveabout/model/s;

.field k:Lcom/google/android/maps/driveabout/model/s;

.field l:[Lcom/google/android/maps/driveabout/model/c;

.field m:Ljava/lang/String;

.field n:Lcom/google/android/maps/driveabout/model/aq;

.field o:I

.field p:Ljava/lang/String;

.field q:I

.field r:I

.field s:I

.field t:F

.field u:I

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Lcom/google/android/maps/driveabout/model/c;

.field y:[I

.field z:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 745
    new-instance v0, Lcom/google/android/maps/driveabout/model/s;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/google/android/maps/driveabout/model/b;->b:Lcom/google/android/maps/driveabout/model/b;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/s;-><init>(Ljava/util/List;Lcom/google/android/maps/driveabout/model/b;)V

    sput-object v0, Lcom/google/android/maps/driveabout/model/ad;->a:Lcom/google/android/maps/driveabout/model/s;

    .line 747
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/c;

    sput-object v0, Lcom/google/android/maps/driveabout/model/ad;->b:[Lcom/google/android/maps/driveabout/model/c;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/model/ad;->c:J

    .line 750
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->d:Lcom/google/android/maps/driveabout/model/aw;

    .line 751
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->e:Lcom/google/android/maps/driveabout/model/ab;

    .line 752
    sget-object v0, Lcom/google/android/maps/driveabout/model/k;->a:Lcom/google/android/maps/driveabout/model/k;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ad;->f:Lcom/google/android/maps/driveabout/model/k;

    .line 753
    iput v3, p0, Lcom/google/android/maps/driveabout/model/ad;->g:I

    .line 754
    iput v3, p0, Lcom/google/android/maps/driveabout/model/ad;->h:I

    .line 755
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->i:[Lcom/google/android/maps/driveabout/model/a;

    .line 756
    sget-object v0, Lcom/google/android/maps/driveabout/model/ad;->a:Lcom/google/android/maps/driveabout/model/s;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ad;->j:Lcom/google/android/maps/driveabout/model/s;

    .line 757
    sget-object v0, Lcom/google/android/maps/driveabout/model/ad;->a:Lcom/google/android/maps/driveabout/model/s;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ad;->k:Lcom/google/android/maps/driveabout/model/s;

    .line 758
    sget-object v0, Lcom/google/android/maps/driveabout/model/ad;->b:[Lcom/google/android/maps/driveabout/model/c;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ad;->l:[Lcom/google/android/maps/driveabout/model/c;

    .line 759
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->m:Ljava/lang/String;

    .line 760
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->n:Lcom/google/android/maps/driveabout/model/aq;

    .line 761
    iput v3, p0, Lcom/google/android/maps/driveabout/model/ad;->o:I

    .line 762
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->p:Ljava/lang/String;

    .line 763
    iput v3, p0, Lcom/google/android/maps/driveabout/model/ad;->q:I

    .line 764
    iput v4, p0, Lcom/google/android/maps/driveabout/model/ad;->r:I

    .line 765
    iput v4, p0, Lcom/google/android/maps/driveabout/model/ad;->s:I

    .line 766
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ad;->t:F

    .line 767
    iput v3, p0, Lcom/google/android/maps/driveabout/model/ad;->u:I

    .line 768
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->v:Ljava/lang/String;

    .line 769
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ad;->w:Ljava/lang/String;

    .line 770
    new-instance v0, Lcom/google/android/maps/driveabout/model/c;

    sget-object v1, Lcom/google/android/maps/driveabout/model/b;->b:Lcom/google/android/maps/driveabout/model/b;

    .line 771
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/b;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/model/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ad;->x:Lcom/google/android/maps/driveabout/model/c;

    .line 772
    invoke-static {}, Lcom/google/android/maps/driveabout/model/ac;->i()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ad;->y:[I

    .line 773
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->z:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

    .line 774
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->A:Ljava/lang/Integer;

    .line 775
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/model/ad;->B:Z

    .line 776
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->C:Ljava/lang/String;

    .line 777
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->D:Ljava/lang/String;

    .line 778
    iput-object v2, p0, Lcom/google/android/maps/driveabout/model/ad;->E:Ljava/lang/String;

    .line 781
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/ac;
    .locals 1

    .prologue
    .line 902
    new-instance v0, Lcom/google/android/maps/driveabout/model/ac;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/model/ac;-><init>(Lcom/google/android/maps/driveabout/model/ad;)V

    return-object v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 832
    iput p1, p0, Lcom/google/android/maps/driveabout/model/ad;->o:I

    .line 833
    return-object p0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->e:Lcom/google/android/maps/driveabout/model/ab;

    .line 801
    return-object p0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/aq;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->n:Lcom/google/android/maps/driveabout/model/aq;

    .line 829
    return-object p0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->d:Lcom/google/android/maps/driveabout/model/aw;

    .line 797
    return-object p0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/k;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->f:Lcom/google/android/maps/driveabout/model/k;

    .line 805
    return-object p0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/s;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->j:Lcom/google/android/maps/driveabout/model/s;

    .line 813
    return-object p0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->z:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

    .line 877
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->m:Ljava/lang/String;

    .line 825
    return-object p0
.end method

.method public final a([I)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->y:[I

    .line 873
    return-object p0
.end method

.method public final a([Lcom/google/android/maps/driveabout/model/a;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->i:[Lcom/google/android/maps/driveabout/model/a;

    .line 809
    return-object p0
.end method

.method public final a([Lcom/google/android/maps/driveabout/model/c;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->l:[Lcom/google/android/maps/driveabout/model/c;

    .line 821
    return-object p0
.end method

.method public final b(I)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 840
    iput p1, p0, Lcom/google/android/maps/driveabout/model/ad;->q:I

    .line 841
    return-object p0
.end method

.method public final b(Lcom/google/android/maps/driveabout/model/s;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->k:Lcom/google/android/maps/driveabout/model/s;

    .line 817
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->p:Ljava/lang/String;

    .line 837
    return-object p0
.end method

.method public final c(I)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 844
    iput p1, p0, Lcom/google/android/maps/driveabout/model/ad;->r:I

    .line 845
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->v:Ljava/lang/String;

    .line 861
    return-object p0
.end method

.method public final d(I)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 848
    iput p1, p0, Lcom/google/android/maps/driveabout/model/ad;->s:I

    .line 849
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->w:Ljava/lang/String;

    .line 865
    return-object p0
.end method

.method public final e(I)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 856
    iput p1, p0, Lcom/google/android/maps/driveabout/model/ad;->u:I

    .line 857
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->C:Ljava/lang/String;

    .line 891
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->D:Ljava/lang/String;

    .line 895
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ad;->E:Ljava/lang/String;

    .line 899
    return-object p0
.end method
