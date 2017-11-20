.class Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final listener:Landroid/location/LocationListener;

.field final request:Lcom/google/glass/location/LocationRequest;


# direct methods
.method constructor <init>(Lcom/google/glass/location/LocationRequest;Landroid/location/LocationListener;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->request:Lcom/google/glass/location/LocationRequest;

    .line 104
    iput-object p2, p0, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->listener:Landroid/location/LocationListener;

    .line 105
    return-void
.end method
