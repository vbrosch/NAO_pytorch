def parse_seq_to_arch(seq, nodes):
    """
    Parses a sequence to an architecture. Since we needed to modify it for visualization, we copied it.
    :param seq: the sequence
    :param nodes: the number of nodes
    :return: parsed sequence
    """
    n = len(seq)

    def _parse_cell(cell_seq):
        cell_arch = []
        for i in range(nodes):
            p1 = int(cell_seq[4 * i]) - 1
            op1 = int(cell_seq[4 * i + 1]) - 7
            p2 = int(cell_seq[4 * i + 2]) - 1
            op2 = int(cell_seq[4 * i + 3]) - 7
            cell_arch.extend([p1, op1, p2, op2])
        return cell_arch

    conv_seq = seq[:n // 2]
    reduc_seq = seq[n // 2:]
    conv_arch = _parse_cell(conv_seq)
    reduc_arch = _parse_cell(reduc_seq)
    arch = [conv_arch, reduc_arch]
    return arch


def main():
    seq = '0 3 0 0 2 4 1 3 2 1 0 4 3 1 1 2 1 4 4 3 1 0 1 1 1 3 0 1 0 1 0 1 2 2 2 0 2 3 4 1'
    res = parse_seq_to_arch(seq.replace(' ', ''), 5)
    print(res)
    pass


if __name__ == '__main__':
    main()
