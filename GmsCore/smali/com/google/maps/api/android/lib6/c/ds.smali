.class public final Lcom/google/maps/api/android/lib6/c/ds;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:J

.field protected c:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ds;->a:Ljava/lang/String;

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/c/ds;->b:J

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/c/ds;->c:J

    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 4

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/c/ds;->c:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/c/ds;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
