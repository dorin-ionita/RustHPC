#include "s_compute_acoustics.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void s_compute_acoustics::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"m_axi_result_AWVALID\" :  \"" << m_axi_result_AWVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_AWREADY\" :  \"" << m_axi_result_AWREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_AWADDR\" :  \"" << m_axi_result_AWADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_AWID\" :  \"" << m_axi_result_AWID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_AWLEN\" :  \"" << m_axi_result_AWLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_AWSIZE\" :  \"" << m_axi_result_AWSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_AWBURST\" :  \"" << m_axi_result_AWBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_AWLOCK\" :  \"" << m_axi_result_AWLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_AWCACHE\" :  \"" << m_axi_result_AWCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_AWPROT\" :  \"" << m_axi_result_AWPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_AWQOS\" :  \"" << m_axi_result_AWQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_AWREGION\" :  \"" << m_axi_result_AWREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_AWUSER\" :  \"" << m_axi_result_AWUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_WVALID\" :  \"" << m_axi_result_WVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_WREADY\" :  \"" << m_axi_result_WREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_WDATA\" :  \"" << m_axi_result_WDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_WSTRB\" :  \"" << m_axi_result_WSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_WLAST\" :  \"" << m_axi_result_WLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_WID\" :  \"" << m_axi_result_WID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_WUSER\" :  \"" << m_axi_result_WUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARVALID\" :  \"" << m_axi_result_ARVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_ARREADY\" :  \"" << m_axi_result_ARREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARADDR\" :  \"" << m_axi_result_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARID\" :  \"" << m_axi_result_ARID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARLEN\" :  \"" << m_axi_result_ARLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARSIZE\" :  \"" << m_axi_result_ARSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARBURST\" :  \"" << m_axi_result_ARBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARLOCK\" :  \"" << m_axi_result_ARLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARCACHE\" :  \"" << m_axi_result_ARCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARPROT\" :  \"" << m_axi_result_ARPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARQOS\" :  \"" << m_axi_result_ARQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARREGION\" :  \"" << m_axi_result_ARREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_ARUSER\" :  \"" << m_axi_result_ARUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_RVALID\" :  \"" << m_axi_result_RVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_RREADY\" :  \"" << m_axi_result_RREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_RDATA\" :  \"" << m_axi_result_RDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_RLAST\" :  \"" << m_axi_result_RLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_RID\" :  \"" << m_axi_result_RID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_RUSER\" :  \"" << m_axi_result_RUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_RRESP\" :  \"" << m_axi_result_RRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_BVALID\" :  \"" << m_axi_result_BVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_result_BREADY\" :  \"" << m_axi_result_BREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_BRESP\" :  \"" << m_axi_result_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_BID\" :  \"" << m_axi_result_BID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_result_BUSER\" :  \"" << m_axi_result_BUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_AWVALID\" :  \"" << s_axi_CONTROL_BUS_AWVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_AWREADY\" :  \"" << s_axi_CONTROL_BUS_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_AWADDR\" :  \"" << s_axi_CONTROL_BUS_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_WVALID\" :  \"" << s_axi_CONTROL_BUS_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_WREADY\" :  \"" << s_axi_CONTROL_BUS_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_WDATA\" :  \"" << s_axi_CONTROL_BUS_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_WSTRB\" :  \"" << s_axi_CONTROL_BUS_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_ARVALID\" :  \"" << s_axi_CONTROL_BUS_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_ARREADY\" :  \"" << s_axi_CONTROL_BUS_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_ARADDR\" :  \"" << s_axi_CONTROL_BUS_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_RVALID\" :  \"" << s_axi_CONTROL_BUS_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_RREADY\" :  \"" << s_axi_CONTROL_BUS_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_RDATA\" :  \"" << s_axi_CONTROL_BUS_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_RRESP\" :  \"" << s_axi_CONTROL_BUS_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_BVALID\" :  \"" << s_axi_CONTROL_BUS_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_CONTROL_BUS_BREADY\" :  \"" << s_axi_CONTROL_BUS_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_CONTROL_BUS_BRESP\" :  \"" << s_axi_CONTROL_BUS_BRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

